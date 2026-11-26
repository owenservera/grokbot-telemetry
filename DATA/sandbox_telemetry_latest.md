# sandbox_telemetry_parse — 2026-11-26 14:29:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3291173 lines=7289
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7274 |
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
| `chromeBrowserPssKb` | {'int': 7274} |
| `chromeGpuPssKb` | {'int': 7274} |
| `chromeOtherPssKb` | {'int': 7274} |
| `chromeProcesses` | {'int': 7274} |
| `chromeProfiles` | {'int': 7274} |
| `chromeRendererMaxPssKb` | {'int': 7274} |
| `chromeRendererPssKb` | {'int': 7274} |
| `chromeRenderers` | {'int': 7274} |
| `chromeTabs` | {'int': 7274} |
| `chromeTabsProbedProfiles` | {'int': 7274} |
| `chromeUtilityPssKb` | {'int': 7274} |
| `desktopPssKb` | {'int': 7274} |
| `hostPssKb` | {'int': 7274} |
| `kind` | {'str': 7274} |
| `memAvailableKb` | {'int': 7274} |
| `memTotalKb` | {'int': 7274} |
| `otherPssKb` | {'int': 7274} |
| `processes` | {'int': 7274} |
| `pssFallbackProcesses` | {'int': 7274} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
