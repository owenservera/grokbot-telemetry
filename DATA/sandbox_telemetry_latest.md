# sandbox_telemetry_parse — 2026-10-14 01:22:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=18450 lines=45
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 40 |
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
| `chromeBrowserPssKb` | {'int': 40} |
| `chromeGpuPssKb` | {'int': 40} |
| `chromeOtherPssKb` | {'int': 40} |
| `chromeProcesses` | {'int': 40} |
| `chromeProfiles` | {'int': 40} |
| `chromeRendererMaxPssKb` | {'int': 40} |
| `chromeRendererPssKb` | {'int': 40} |
| `chromeRenderers` | {'int': 40} |
| `chromeTabs` | {'int': 40} |
| `chromeTabsProbedProfiles` | {'int': 40} |
| `chromeUtilityPssKb` | {'int': 40} |
| `desktopPssKb` | {'int': 40} |
| `hostPssKb` | {'int': 40} |
| `kind` | {'str': 40} |
| `memAvailableKb` | {'int': 40} |
| `memTotalKb` | {'int': 40} |
| `otherPssKb` | {'int': 40} |
| `processes` | {'int': 40} |
| `pssFallbackProcesses` | {'int': 40} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
