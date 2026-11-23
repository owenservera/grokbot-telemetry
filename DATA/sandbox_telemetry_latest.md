# sandbox_telemetry_parse — 2026-11-23 17:50:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1933684 lines=4288
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4273 |
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
| `chromeBrowserPssKb` | {'int': 4273} |
| `chromeGpuPssKb` | {'int': 4273} |
| `chromeOtherPssKb` | {'int': 4273} |
| `chromeProcesses` | {'int': 4273} |
| `chromeProfiles` | {'int': 4273} |
| `chromeRendererMaxPssKb` | {'int': 4273} |
| `chromeRendererPssKb` | {'int': 4273} |
| `chromeRenderers` | {'int': 4273} |
| `chromeTabs` | {'int': 4273} |
| `chromeTabsProbedProfiles` | {'int': 4273} |
| `chromeUtilityPssKb` | {'int': 4273} |
| `desktopPssKb` | {'int': 4273} |
| `hostPssKb` | {'int': 4273} |
| `kind` | {'str': 4273} |
| `memAvailableKb` | {'int': 4273} |
| `memTotalKb` | {'int': 4273} |
| `otherPssKb` | {'int': 4273} |
| `processes` | {'int': 4273} |
| `pssFallbackProcesses` | {'int': 4273} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
