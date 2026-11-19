# sandbox_telemetry_parse — 2026-11-20 00:25:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1506874 lines=3341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3330 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3330} |
| `chromeGpuPssKb` | {'int': 3330} |
| `chromeOtherPssKb` | {'int': 3330} |
| `chromeProcesses` | {'int': 3330} |
| `chromeProfiles` | {'int': 3330} |
| `chromeRendererMaxPssKb` | {'int': 3330} |
| `chromeRendererPssKb` | {'int': 3330} |
| `chromeRenderers` | {'int': 3330} |
| `chromeTabs` | {'int': 3330} |
| `chromeTabsProbedProfiles` | {'int': 3330} |
| `chromeUtilityPssKb` | {'int': 3330} |
| `desktopPssKb` | {'int': 3330} |
| `hostPssKb` | {'int': 3330} |
| `kind` | {'str': 3330} |
| `memAvailableKb` | {'int': 3330} |
| `memTotalKb` | {'int': 3330} |
| `otherPssKb` | {'int': 3330} |
| `processes` | {'int': 3330} |
| `pssFallbackProcesses` | {'int': 3330} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
