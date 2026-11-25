# sandbox_telemetry_parse — 2026-11-25 13:59:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2783665 lines=6167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6152 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6152} |
| `chromeGpuPssKb` | {'int': 6152} |
| `chromeOtherPssKb` | {'int': 6152} |
| `chromeProcesses` | {'int': 6152} |
| `chromeProfiles` | {'int': 6152} |
| `chromeRendererMaxPssKb` | {'int': 6152} |
| `chromeRendererPssKb` | {'int': 6152} |
| `chromeRenderers` | {'int': 6152} |
| `chromeTabs` | {'int': 6152} |
| `chromeTabsProbedProfiles` | {'int': 6152} |
| `chromeUtilityPssKb` | {'int': 6152} |
| `desktopPssKb` | {'int': 6152} |
| `hostPssKb` | {'int': 6152} |
| `kind` | {'str': 6152} |
| `memAvailableKb` | {'int': 6152} |
| `memTotalKb` | {'int': 6152} |
| `otherPssKb` | {'int': 6152} |
| `processes` | {'int': 6152} |
| `pssFallbackProcesses` | {'int': 6152} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
