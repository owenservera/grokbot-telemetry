# sandbox_telemetry_parse — 2026-10-26 19:51:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=107742 lines=242
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 237 |
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
| `chromeBrowserPssKb` | {'int': 237} |
| `chromeGpuPssKb` | {'int': 237} |
| `chromeOtherPssKb` | {'int': 237} |
| `chromeProcesses` | {'int': 237} |
| `chromeProfiles` | {'int': 237} |
| `chromeRendererMaxPssKb` | {'int': 237} |
| `chromeRendererPssKb` | {'int': 237} |
| `chromeRenderers` | {'int': 237} |
| `chromeTabs` | {'int': 237} |
| `chromeTabsProbedProfiles` | {'int': 237} |
| `chromeUtilityPssKb` | {'int': 237} |
| `desktopPssKb` | {'int': 237} |
| `hostPssKb` | {'int': 237} |
| `kind` | {'str': 237} |
| `memAvailableKb` | {'int': 237} |
| `memTotalKb` | {'int': 237} |
| `otherPssKb` | {'int': 237} |
| `processes` | {'int': 237} |
| `pssFallbackProcesses` | {'int': 237} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
