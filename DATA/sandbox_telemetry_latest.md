# sandbox_telemetry_parse — 2026-11-10 21:53:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1340442 lines=2970
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2961 |
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
| `chromeBrowserPssKb` | {'int': 2961} |
| `chromeGpuPssKb` | {'int': 2961} |
| `chromeOtherPssKb` | {'int': 2961} |
| `chromeProcesses` | {'int': 2961} |
| `chromeProfiles` | {'int': 2961} |
| `chromeRendererMaxPssKb` | {'int': 2961} |
| `chromeRendererPssKb` | {'int': 2961} |
| `chromeRenderers` | {'int': 2961} |
| `chromeTabs` | {'int': 2961} |
| `chromeTabsProbedProfiles` | {'int': 2961} |
| `chromeUtilityPssKb` | {'int': 2961} |
| `desktopPssKb` | {'int': 2961} |
| `hostPssKb` | {'int': 2961} |
| `kind` | {'str': 2961} |
| `memAvailableKb` | {'int': 2961} |
| `memTotalKb` | {'int': 2961} |
| `otherPssKb` | {'int': 2961} |
| `processes` | {'int': 2961} |
| `pssFallbackProcesses` | {'int': 2961} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
