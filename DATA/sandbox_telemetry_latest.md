# sandbox_telemetry_parse — 2026-10-26 20:13:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=117708 lines=264
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 259 |
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
| `chromeBrowserPssKb` | {'int': 259} |
| `chromeGpuPssKb` | {'int': 259} |
| `chromeOtherPssKb` | {'int': 259} |
| `chromeProcesses` | {'int': 259} |
| `chromeProfiles` | {'int': 259} |
| `chromeRendererMaxPssKb` | {'int': 259} |
| `chromeRendererPssKb` | {'int': 259} |
| `chromeRenderers` | {'int': 259} |
| `chromeTabs` | {'int': 259} |
| `chromeTabsProbedProfiles` | {'int': 259} |
| `chromeUtilityPssKb` | {'int': 259} |
| `desktopPssKb` | {'int': 259} |
| `hostPssKb` | {'int': 259} |
| `kind` | {'str': 259} |
| `memAvailableKb` | {'int': 259} |
| `memTotalKb` | {'int': 259} |
| `otherPssKb` | {'int': 259} |
| `processes` | {'int': 259} |
| `pssFallbackProcesses` | {'int': 259} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
