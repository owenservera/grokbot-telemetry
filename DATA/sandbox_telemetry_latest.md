# sandbox_telemetry_parse — 2026-10-26 20:04:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=113178 lines=254
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 249 |
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
| `chromeBrowserPssKb` | {'int': 249} |
| `chromeGpuPssKb` | {'int': 249} |
| `chromeOtherPssKb` | {'int': 249} |
| `chromeProcesses` | {'int': 249} |
| `chromeProfiles` | {'int': 249} |
| `chromeRendererMaxPssKb` | {'int': 249} |
| `chromeRendererPssKb` | {'int': 249} |
| `chromeRenderers` | {'int': 249} |
| `chromeTabs` | {'int': 249} |
| `chromeTabsProbedProfiles` | {'int': 249} |
| `chromeUtilityPssKb` | {'int': 249} |
| `desktopPssKb` | {'int': 249} |
| `hostPssKb` | {'int': 249} |
| `kind` | {'str': 249} |
| `memAvailableKb` | {'int': 249} |
| `memTotalKb` | {'int': 249} |
| `otherPssKb` | {'int': 249} |
| `processes` | {'int': 249} |
| `pssFallbackProcesses` | {'int': 249} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
