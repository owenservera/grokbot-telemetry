# sandbox_telemetry_parse — 2026-10-06 19:34:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=561074 lines=1235
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1230 |
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
| `chromeBrowserPssKb` | {'int': 1230} |
| `chromeGpuPssKb` | {'int': 1230} |
| `chromeOtherPssKb` | {'int': 1230} |
| `chromeProcesses` | {'int': 1230} |
| `chromeProfiles` | {'int': 1230} |
| `chromeRendererMaxPssKb` | {'int': 1230} |
| `chromeRendererPssKb` | {'int': 1230} |
| `chromeRenderers` | {'int': 1230} |
| `chromeTabs` | {'int': 1230} |
| `chromeTabsProbedProfiles` | {'int': 1230} |
| `chromeUtilityPssKb` | {'int': 1230} |
| `desktopPssKb` | {'int': 1230} |
| `hostPssKb` | {'int': 1230} |
| `kind` | {'str': 1230} |
| `memAvailableKb` | {'int': 1230} |
| `memTotalKb` | {'int': 1230} |
| `otherPssKb` | {'int': 1230} |
| `processes` | {'int': 1230} |
| `pssFallbackProcesses` | {'int': 1230} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
