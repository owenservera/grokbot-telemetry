# sandbox_telemetry_parse — 2026-11-12 02:59:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1941345 lines=4298
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4289 |
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
| `chromeBrowserPssKb` | {'int': 4289} |
| `chromeGpuPssKb` | {'int': 4289} |
| `chromeOtherPssKb` | {'int': 4289} |
| `chromeProcesses` | {'int': 4289} |
| `chromeProfiles` | {'int': 4289} |
| `chromeRendererMaxPssKb` | {'int': 4289} |
| `chromeRendererPssKb` | {'int': 4289} |
| `chromeRenderers` | {'int': 4289} |
| `chromeTabs` | {'int': 4289} |
| `chromeTabsProbedProfiles` | {'int': 4289} |
| `chromeUtilityPssKb` | {'int': 4289} |
| `desktopPssKb` | {'int': 4289} |
| `hostPssKb` | {'int': 4289} |
| `kind` | {'str': 4289} |
| `memAvailableKb` | {'int': 4289} |
| `memTotalKb` | {'int': 4289} |
| `otherPssKb` | {'int': 4289} |
| `processes` | {'int': 4289} |
| `pssFallbackProcesses` | {'int': 4289} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
