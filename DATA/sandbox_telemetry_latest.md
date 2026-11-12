# sandbox_telemetry_parse — 2026-11-12 07:04:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2017323 lines=4466
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4457 |
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
| `chromeBrowserPssKb` | {'int': 4457} |
| `chromeGpuPssKb` | {'int': 4457} |
| `chromeOtherPssKb` | {'int': 4457} |
| `chromeProcesses` | {'int': 4457} |
| `chromeProfiles` | {'int': 4457} |
| `chromeRendererMaxPssKb` | {'int': 4457} |
| `chromeRendererPssKb` | {'int': 4457} |
| `chromeRenderers` | {'int': 4457} |
| `chromeTabs` | {'int': 4457} |
| `chromeTabsProbedProfiles` | {'int': 4457} |
| `chromeUtilityPssKb` | {'int': 4457} |
| `desktopPssKb` | {'int': 4457} |
| `hostPssKb` | {'int': 4457} |
| `kind` | {'str': 4457} |
| `memAvailableKb` | {'int': 4457} |
| `memTotalKb` | {'int': 4457} |
| `otherPssKb` | {'int': 4457} |
| `processes` | {'int': 4457} |
| `pssFallbackProcesses` | {'int': 4457} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
