# sandbox_telemetry_parse — 2026-10-06 19:45:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=565634 lines=1245
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1240 |
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
| `chromeBrowserPssKb` | {'int': 1240} |
| `chromeGpuPssKb` | {'int': 1240} |
| `chromeOtherPssKb` | {'int': 1240} |
| `chromeProcesses` | {'int': 1240} |
| `chromeProfiles` | {'int': 1240} |
| `chromeRendererMaxPssKb` | {'int': 1240} |
| `chromeRendererPssKb` | {'int': 1240} |
| `chromeRenderers` | {'int': 1240} |
| `chromeTabs` | {'int': 1240} |
| `chromeTabsProbedProfiles` | {'int': 1240} |
| `chromeUtilityPssKb` | {'int': 1240} |
| `desktopPssKb` | {'int': 1240} |
| `hostPssKb` | {'int': 1240} |
| `kind` | {'str': 1240} |
| `memAvailableKb` | {'int': 1240} |
| `memTotalKb` | {'int': 1240} |
| `otherPssKb` | {'int': 1240} |
| `processes` | {'int': 1240} |
| `pssFallbackProcesses` | {'int': 1240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
