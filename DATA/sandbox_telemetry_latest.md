# sandbox_telemetry_parse — 2026-11-12 04:03:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1960802 lines=4341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4332 |
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
| `chromeBrowserPssKb` | {'int': 4332} |
| `chromeGpuPssKb` | {'int': 4332} |
| `chromeOtherPssKb` | {'int': 4332} |
| `chromeProcesses` | {'int': 4332} |
| `chromeProfiles` | {'int': 4332} |
| `chromeRendererMaxPssKb` | {'int': 4332} |
| `chromeRendererPssKb` | {'int': 4332} |
| `chromeRenderers` | {'int': 4332} |
| `chromeTabs` | {'int': 4332} |
| `chromeTabsProbedProfiles` | {'int': 4332} |
| `chromeUtilityPssKb` | {'int': 4332} |
| `desktopPssKb` | {'int': 4332} |
| `hostPssKb` | {'int': 4332} |
| `kind` | {'str': 4332} |
| `memAvailableKb` | {'int': 4332} |
| `memTotalKb` | {'int': 4332} |
| `otherPssKb` | {'int': 4332} |
| `processes` | {'int': 4332} |
| `pssFallbackProcesses` | {'int': 4332} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
