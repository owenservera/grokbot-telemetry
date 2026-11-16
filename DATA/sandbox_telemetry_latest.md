# sandbox_telemetry_parse — 2026-11-16 15:23:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=21356 lines=53
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 46 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

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
| `chromeBrowserPssKb` | {'int': 46} |
| `chromeGpuPssKb` | {'int': 46} |
| `chromeOtherPssKb` | {'int': 46} |
| `chromeProcesses` | {'int': 46} |
| `chromeProfiles` | {'int': 46} |
| `chromeRendererMaxPssKb` | {'int': 46} |
| `chromeRendererPssKb` | {'int': 46} |
| `chromeRenderers` | {'int': 46} |
| `chromeTabs` | {'int': 46} |
| `chromeTabsProbedProfiles` | {'int': 46} |
| `chromeUtilityPssKb` | {'int': 46} |
| `desktopPssKb` | {'int': 46} |
| `hostPssKb` | {'int': 46} |
| `kind` | {'str': 46} |
| `memAvailableKb` | {'int': 46} |
| `memTotalKb` | {'int': 46} |
| `otherPssKb` | {'int': 46} |
| `processes` | {'int': 46} |
| `pssFallbackProcesses` | {'int': 46} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
