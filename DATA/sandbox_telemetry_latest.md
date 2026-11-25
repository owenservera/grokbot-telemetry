# sandbox_telemetry_parse — 2026-11-25 03:21:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2569750 lines=5694
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5679 |
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
| `chromeBrowserPssKb` | {'int': 5679} |
| `chromeGpuPssKb` | {'int': 5679} |
| `chromeOtherPssKb` | {'int': 5679} |
| `chromeProcesses` | {'int': 5679} |
| `chromeProfiles` | {'int': 5679} |
| `chromeRendererMaxPssKb` | {'int': 5679} |
| `chromeRendererPssKb` | {'int': 5679} |
| `chromeRenderers` | {'int': 5679} |
| `chromeTabs` | {'int': 5679} |
| `chromeTabsProbedProfiles` | {'int': 5679} |
| `chromeUtilityPssKb` | {'int': 5679} |
| `desktopPssKb` | {'int': 5679} |
| `hostPssKb` | {'int': 5679} |
| `kind` | {'str': 5679} |
| `memAvailableKb` | {'int': 5679} |
| `memTotalKb` | {'int': 5679} |
| `otherPssKb` | {'int': 5679} |
| `processes` | {'int': 5679} |
| `pssFallbackProcesses` | {'int': 5679} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
