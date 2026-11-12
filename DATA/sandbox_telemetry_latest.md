# sandbox_telemetry_parse — 2026-11-12 17:50:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2253196 lines=4987
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4978 |
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
| `chromeBrowserPssKb` | {'int': 4978} |
| `chromeGpuPssKb` | {'int': 4978} |
| `chromeOtherPssKb` | {'int': 4978} |
| `chromeProcesses` | {'int': 4978} |
| `chromeProfiles` | {'int': 4978} |
| `chromeRendererMaxPssKb` | {'int': 4978} |
| `chromeRendererPssKb` | {'int': 4978} |
| `chromeRenderers` | {'int': 4978} |
| `chromeTabs` | {'int': 4978} |
| `chromeTabsProbedProfiles` | {'int': 4978} |
| `chromeUtilityPssKb` | {'int': 4978} |
| `desktopPssKb` | {'int': 4978} |
| `hostPssKb` | {'int': 4978} |
| `kind` | {'str': 4978} |
| `memAvailableKb` | {'int': 4978} |
| `memTotalKb` | {'int': 4978} |
| `otherPssKb` | {'int': 4978} |
| `processes` | {'int': 4978} |
| `pssFallbackProcesses` | {'int': 4978} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
