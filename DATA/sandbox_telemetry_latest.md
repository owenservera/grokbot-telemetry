# sandbox_telemetry_parse — 2026-11-07 08:37:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=381086 lines=850
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 841 |
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
| `chromeBrowserPssKb` | {'int': 841} |
| `chromeGpuPssKb` | {'int': 841} |
| `chromeOtherPssKb` | {'int': 841} |
| `chromeProcesses` | {'int': 841} |
| `chromeProfiles` | {'int': 841} |
| `chromeRendererMaxPssKb` | {'int': 841} |
| `chromeRendererPssKb` | {'int': 841} |
| `chromeRenderers` | {'int': 841} |
| `chromeTabs` | {'int': 841} |
| `chromeTabsProbedProfiles` | {'int': 841} |
| `chromeUtilityPssKb` | {'int': 841} |
| `desktopPssKb` | {'int': 841} |
| `hostPssKb` | {'int': 841} |
| `kind` | {'str': 841} |
| `memAvailableKb` | {'int': 841} |
| `memTotalKb` | {'int': 841} |
| `otherPssKb` | {'int': 841} |
| `processes` | {'int': 841} |
| `pssFallbackProcesses` | {'int': 841} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
