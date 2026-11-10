# sandbox_telemetry_parse — 2026-11-10 19:41:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1290654 lines=2860
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2851 |
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
| `chromeBrowserPssKb` | {'int': 2851} |
| `chromeGpuPssKb` | {'int': 2851} |
| `chromeOtherPssKb` | {'int': 2851} |
| `chromeProcesses` | {'int': 2851} |
| `chromeProfiles` | {'int': 2851} |
| `chromeRendererMaxPssKb` | {'int': 2851} |
| `chromeRendererPssKb` | {'int': 2851} |
| `chromeRenderers` | {'int': 2851} |
| `chromeTabs` | {'int': 2851} |
| `chromeTabsProbedProfiles` | {'int': 2851} |
| `chromeUtilityPssKb` | {'int': 2851} |
| `desktopPssKb` | {'int': 2851} |
| `hostPssKb` | {'int': 2851} |
| `kind` | {'str': 2851} |
| `memAvailableKb` | {'int': 2851} |
| `memTotalKb` | {'int': 2851} |
| `otherPssKb` | {'int': 2851} |
| `processes` | {'int': 2851} |
| `pssFallbackProcesses` | {'int': 2851} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
