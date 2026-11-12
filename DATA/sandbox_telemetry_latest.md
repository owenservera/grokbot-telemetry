# sandbox_telemetry_parse — 2026-11-12 16:23:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2219674 lines=4913
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4904 |
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
| `chromeBrowserPssKb` | {'int': 4904} |
| `chromeGpuPssKb` | {'int': 4904} |
| `chromeOtherPssKb` | {'int': 4904} |
| `chromeProcesses` | {'int': 4904} |
| `chromeProfiles` | {'int': 4904} |
| `chromeRendererMaxPssKb` | {'int': 4904} |
| `chromeRendererPssKb` | {'int': 4904} |
| `chromeRenderers` | {'int': 4904} |
| `chromeTabs` | {'int': 4904} |
| `chromeTabsProbedProfiles` | {'int': 4904} |
| `chromeUtilityPssKb` | {'int': 4904} |
| `desktopPssKb` | {'int': 4904} |
| `hostPssKb` | {'int': 4904} |
| `kind` | {'str': 4904} |
| `memAvailableKb` | {'int': 4904} |
| `memTotalKb` | {'int': 4904} |
| `otherPssKb` | {'int': 4904} |
| `processes` | {'int': 4904} |
| `pssFallbackProcesses` | {'int': 4904} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
