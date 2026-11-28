# sandbox_telemetry_parse — 2026-11-28 05:55:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=758907 lines=1684
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1676 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1676} |
| `chromeGpuPssKb` | {'int': 1676} |
| `chromeOtherPssKb` | {'int': 1676} |
| `chromeProcesses` | {'int': 1676} |
| `chromeProfiles` | {'int': 1676} |
| `chromeRendererMaxPssKb` | {'int': 1676} |
| `chromeRendererPssKb` | {'int': 1676} |
| `chromeRenderers` | {'int': 1676} |
| `chromeTabs` | {'int': 1676} |
| `chromeTabsProbedProfiles` | {'int': 1676} |
| `chromeUtilityPssKb` | {'int': 1676} |
| `desktopPssKb` | {'int': 1676} |
| `hostPssKb` | {'int': 1676} |
| `kind` | {'str': 1676} |
| `memAvailableKb` | {'int': 1676} |
| `memTotalKb` | {'int': 1676} |
| `otherPssKb` | {'int': 1676} |
| `processes` | {'int': 1676} |
| `pssFallbackProcesses` | {'int': 1676} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
