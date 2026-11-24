# sandbox_telemetry_parse — 2026-11-24 15:02:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2331298 lines=5167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5152 |
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
| `chromeBrowserPssKb` | {'int': 5152} |
| `chromeGpuPssKb` | {'int': 5152} |
| `chromeOtherPssKb` | {'int': 5152} |
| `chromeProcesses` | {'int': 5152} |
| `chromeProfiles` | {'int': 5152} |
| `chromeRendererMaxPssKb` | {'int': 5152} |
| `chromeRendererPssKb` | {'int': 5152} |
| `chromeRenderers` | {'int': 5152} |
| `chromeTabs` | {'int': 5152} |
| `chromeTabsProbedProfiles` | {'int': 5152} |
| `chromeUtilityPssKb` | {'int': 5152} |
| `desktopPssKb` | {'int': 5152} |
| `hostPssKb` | {'int': 5152} |
| `kind` | {'str': 5152} |
| `memAvailableKb` | {'int': 5152} |
| `memTotalKb` | {'int': 5152} |
| `otherPssKb` | {'int': 5152} |
| `processes` | {'int': 5152} |
| `pssFallbackProcesses` | {'int': 5152} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
