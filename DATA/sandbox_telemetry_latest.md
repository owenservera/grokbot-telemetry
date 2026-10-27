# sandbox_telemetry_parse — 2026-10-27 02:11:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=263116 lines=585
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 580 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 580} |
| `chromeGpuPssKb` | {'int': 580} |
| `chromeOtherPssKb` | {'int': 580} |
| `chromeProcesses` | {'int': 580} |
| `chromeProfiles` | {'int': 580} |
| `chromeRendererMaxPssKb` | {'int': 580} |
| `chromeRendererPssKb` | {'int': 580} |
| `chromeRenderers` | {'int': 580} |
| `chromeTabs` | {'int': 580} |
| `chromeTabsProbedProfiles` | {'int': 580} |
| `chromeUtilityPssKb` | {'int': 580} |
| `desktopPssKb` | {'int': 580} |
| `hostPssKb` | {'int': 580} |
| `kind` | {'str': 580} |
| `memAvailableKb` | {'int': 580} |
| `memTotalKb` | {'int': 580} |
| `otherPssKb` | {'int': 580} |
| `processes` | {'int': 580} |
| `pssFallbackProcesses` | {'int': 580} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
