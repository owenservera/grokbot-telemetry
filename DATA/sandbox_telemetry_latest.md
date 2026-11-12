# sandbox_telemetry_parse — 2026-11-12 04:49:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1974826 lines=4372
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4363 |
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
| `chromeBrowserPssKb` | {'int': 4363} |
| `chromeGpuPssKb` | {'int': 4363} |
| `chromeOtherPssKb` | {'int': 4363} |
| `chromeProcesses` | {'int': 4363} |
| `chromeProfiles` | {'int': 4363} |
| `chromeRendererMaxPssKb` | {'int': 4363} |
| `chromeRendererPssKb` | {'int': 4363} |
| `chromeRenderers` | {'int': 4363} |
| `chromeTabs` | {'int': 4363} |
| `chromeTabsProbedProfiles` | {'int': 4363} |
| `chromeUtilityPssKb` | {'int': 4363} |
| `desktopPssKb` | {'int': 4363} |
| `hostPssKb` | {'int': 4363} |
| `kind` | {'str': 4363} |
| `memAvailableKb` | {'int': 4363} |
| `memTotalKb` | {'int': 4363} |
| `otherPssKb` | {'int': 4363} |
| `processes` | {'int': 4363} |
| `pssFallbackProcesses` | {'int': 4363} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
