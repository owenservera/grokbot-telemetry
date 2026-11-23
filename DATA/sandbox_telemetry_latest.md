# sandbox_telemetry_parse — 2026-11-23 15:26:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1892510 lines=4197
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4182 |
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
| `chromeBrowserPssKb` | {'int': 4182} |
| `chromeGpuPssKb` | {'int': 4182} |
| `chromeOtherPssKb` | {'int': 4182} |
| `chromeProcesses` | {'int': 4182} |
| `chromeProfiles` | {'int': 4182} |
| `chromeRendererMaxPssKb` | {'int': 4182} |
| `chromeRendererPssKb` | {'int': 4182} |
| `chromeRenderers` | {'int': 4182} |
| `chromeTabs` | {'int': 4182} |
| `chromeTabsProbedProfiles` | {'int': 4182} |
| `chromeUtilityPssKb` | {'int': 4182} |
| `desktopPssKb` | {'int': 4182} |
| `hostPssKb` | {'int': 4182} |
| `kind` | {'str': 4182} |
| `memAvailableKb` | {'int': 4182} |
| `memTotalKb` | {'int': 4182} |
| `otherPssKb` | {'int': 4182} |
| `processes` | {'int': 4182} |
| `pssFallbackProcesses` | {'int': 4182} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
