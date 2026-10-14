# sandbox_telemetry_parse — 2026-10-14 09:35:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=215070 lines=480
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 475 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 475} |
| `chromeGpuPssKb` | {'int': 475} |
| `chromeOtherPssKb` | {'int': 475} |
| `chromeProcesses` | {'int': 475} |
| `chromeProfiles` | {'int': 475} |
| `chromeRendererMaxPssKb` | {'int': 475} |
| `chromeRendererPssKb` | {'int': 475} |
| `chromeRenderers` | {'int': 475} |
| `chromeTabs` | {'int': 475} |
| `chromeTabsProbedProfiles` | {'int': 475} |
| `chromeUtilityPssKb` | {'int': 475} |
| `desktopPssKb` | {'int': 475} |
| `hostPssKb` | {'int': 475} |
| `kind` | {'str': 475} |
| `memAvailableKb` | {'int': 475} |
| `memTotalKb` | {'int': 475} |
| `otherPssKb` | {'int': 475} |
| `processes` | {'int': 475} |
| `pssFallbackProcesses` | {'int': 475} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
