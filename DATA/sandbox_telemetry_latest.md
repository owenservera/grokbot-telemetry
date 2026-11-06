# sandbox_telemetry_parse — 2026-11-06 17:11:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=76682 lines=177
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 168 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 168} |
| `chromeGpuPssKb` | {'int': 168} |
| `chromeOtherPssKb` | {'int': 168} |
| `chromeProcesses` | {'int': 168} |
| `chromeProfiles` | {'int': 168} |
| `chromeRendererMaxPssKb` | {'int': 168} |
| `chromeRendererPssKb` | {'int': 168} |
| `chromeRenderers` | {'int': 168} |
| `chromeTabs` | {'int': 168} |
| `chromeTabsProbedProfiles` | {'int': 168} |
| `chromeUtilityPssKb` | {'int': 168} |
| `desktopPssKb` | {'int': 168} |
| `hostPssKb` | {'int': 168} |
| `kind` | {'str': 168} |
| `memAvailableKb` | {'int': 168} |
| `memTotalKb` | {'int': 168} |
| `otherPssKb` | {'int': 168} |
| `processes` | {'int': 168} |
| `pssFallbackProcesses` | {'int': 168} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
