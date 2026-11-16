# sandbox_telemetry_parse — 2026-11-16 18:47:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=82870 lines=189
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 182 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 182} |
| `chromeGpuPssKb` | {'int': 182} |
| `chromeOtherPssKb` | {'int': 182} |
| `chromeProcesses` | {'int': 182} |
| `chromeProfiles` | {'int': 182} |
| `chromeRendererMaxPssKb` | {'int': 182} |
| `chromeRendererPssKb` | {'int': 182} |
| `chromeRenderers` | {'int': 182} |
| `chromeTabs` | {'int': 182} |
| `chromeTabsProbedProfiles` | {'int': 182} |
| `chromeUtilityPssKb` | {'int': 182} |
| `desktopPssKb` | {'int': 182} |
| `hostPssKb` | {'int': 182} |
| `kind` | {'str': 182} |
| `memAvailableKb` | {'int': 182} |
| `memTotalKb` | {'int': 182} |
| `otherPssKb` | {'int': 182} |
| `processes` | {'int': 182} |
| `pssFallbackProcesses` | {'int': 182} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
