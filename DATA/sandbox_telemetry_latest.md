# sandbox_telemetry_parse — 2026-11-24 23:54:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2505105 lines=5551
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5536 |
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
| `chromeBrowserPssKb` | {'int': 5536} |
| `chromeGpuPssKb` | {'int': 5536} |
| `chromeOtherPssKb` | {'int': 5536} |
| `chromeProcesses` | {'int': 5536} |
| `chromeProfiles` | {'int': 5536} |
| `chromeRendererMaxPssKb` | {'int': 5536} |
| `chromeRendererPssKb` | {'int': 5536} |
| `chromeRenderers` | {'int': 5536} |
| `chromeTabs` | {'int': 5536} |
| `chromeTabsProbedProfiles` | {'int': 5536} |
| `chromeUtilityPssKb` | {'int': 5536} |
| `desktopPssKb` | {'int': 5536} |
| `hostPssKb` | {'int': 5536} |
| `kind` | {'str': 5536} |
| `memAvailableKb` | {'int': 5536} |
| `memTotalKb` | {'int': 5536} |
| `otherPssKb` | {'int': 5536} |
| `processes` | {'int': 5536} |
| `pssFallbackProcesses` | {'int': 5536} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
