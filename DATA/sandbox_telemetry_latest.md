# sandbox_telemetry_parse — 2026-11-12 11:06:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2099229 lines=4647
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4638 |
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
| `chromeBrowserPssKb` | {'int': 4638} |
| `chromeGpuPssKb` | {'int': 4638} |
| `chromeOtherPssKb` | {'int': 4638} |
| `chromeProcesses` | {'int': 4638} |
| `chromeProfiles` | {'int': 4638} |
| `chromeRendererMaxPssKb` | {'int': 4638} |
| `chromeRendererPssKb` | {'int': 4638} |
| `chromeRenderers` | {'int': 4638} |
| `chromeTabs` | {'int': 4638} |
| `chromeTabsProbedProfiles` | {'int': 4638} |
| `chromeUtilityPssKb` | {'int': 4638} |
| `desktopPssKb` | {'int': 4638} |
| `hostPssKb` | {'int': 4638} |
| `kind` | {'str': 4638} |
| `memAvailableKb` | {'int': 4638} |
| `memTotalKb` | {'int': 4638} |
| `otherPssKb` | {'int': 4638} |
| `processes` | {'int': 4638} |
| `pssFallbackProcesses` | {'int': 4638} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
