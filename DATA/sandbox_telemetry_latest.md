# sandbox_telemetry_parse — 2026-11-26 09:03:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3175342 lines=7033
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7018 |
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
| `chromeBrowserPssKb` | {'int': 7018} |
| `chromeGpuPssKb` | {'int': 7018} |
| `chromeOtherPssKb` | {'int': 7018} |
| `chromeProcesses` | {'int': 7018} |
| `chromeProfiles` | {'int': 7018} |
| `chromeRendererMaxPssKb` | {'int': 7018} |
| `chromeRendererPssKb` | {'int': 7018} |
| `chromeRenderers` | {'int': 7018} |
| `chromeTabs` | {'int': 7018} |
| `chromeTabsProbedProfiles` | {'int': 7018} |
| `chromeUtilityPssKb` | {'int': 7018} |
| `desktopPssKb` | {'int': 7018} |
| `hostPssKb` | {'int': 7018} |
| `kind` | {'str': 7018} |
| `memAvailableKb` | {'int': 7018} |
| `memTotalKb` | {'int': 7018} |
| `otherPssKb` | {'int': 7018} |
| `processes` | {'int': 7018} |
| `pssFallbackProcesses` | {'int': 7018} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
