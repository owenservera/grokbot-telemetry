# sandbox_telemetry_parse — 2026-11-27 06:45:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=289198 lines=646
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 638 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 638} |
| `chromeGpuPssKb` | {'int': 638} |
| `chromeOtherPssKb` | {'int': 638} |
| `chromeProcesses` | {'int': 638} |
| `chromeProfiles` | {'int': 638} |
| `chromeRendererMaxPssKb` | {'int': 638} |
| `chromeRendererPssKb` | {'int': 638} |
| `chromeRenderers` | {'int': 638} |
| `chromeTabs` | {'int': 638} |
| `chromeTabsProbedProfiles` | {'int': 638} |
| `chromeUtilityPssKb` | {'int': 638} |
| `desktopPssKb` | {'int': 638} |
| `hostPssKb` | {'int': 638} |
| `kind` | {'str': 638} |
| `memAvailableKb` | {'int': 638} |
| `memTotalKb` | {'int': 638} |
| `otherPssKb` | {'int': 638} |
| `processes` | {'int': 638} |
| `pssFallbackProcesses` | {'int': 638} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
