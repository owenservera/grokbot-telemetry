# sandbox_telemetry_parse — 2026-10-27 13:09:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=528616 lines=1172
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1167 |
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
| `chromeBrowserPssKb` | {'int': 1167} |
| `chromeGpuPssKb` | {'int': 1167} |
| `chromeOtherPssKb` | {'int': 1167} |
| `chromeProcesses` | {'int': 1167} |
| `chromeProfiles` | {'int': 1167} |
| `chromeRendererMaxPssKb` | {'int': 1167} |
| `chromeRendererPssKb` | {'int': 1167} |
| `chromeRenderers` | {'int': 1167} |
| `chromeTabs` | {'int': 1167} |
| `chromeTabsProbedProfiles` | {'int': 1167} |
| `chromeUtilityPssKb` | {'int': 1167} |
| `desktopPssKb` | {'int': 1167} |
| `hostPssKb` | {'int': 1167} |
| `kind` | {'str': 1167} |
| `memAvailableKb` | {'int': 1167} |
| `memTotalKb` | {'int': 1167} |
| `otherPssKb` | {'int': 1167} |
| `processes` | {'int': 1167} |
| `pssFallbackProcesses` | {'int': 1167} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
