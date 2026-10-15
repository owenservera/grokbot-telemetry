# sandbox_telemetry_parse — 2026-10-15 20:44:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1049010 lines=2325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2320 |
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
| `chromeBrowserPssKb` | {'int': 2320} |
| `chromeGpuPssKb` | {'int': 2320} |
| `chromeOtherPssKb` | {'int': 2320} |
| `chromeProcesses` | {'int': 2320} |
| `chromeProfiles` | {'int': 2320} |
| `chromeRendererMaxPssKb` | {'int': 2320} |
| `chromeRendererPssKb` | {'int': 2320} |
| `chromeRenderers` | {'int': 2320} |
| `chromeTabs` | {'int': 2320} |
| `chromeTabsProbedProfiles` | {'int': 2320} |
| `chromeUtilityPssKb` | {'int': 2320} |
| `desktopPssKb` | {'int': 2320} |
| `hostPssKb` | {'int': 2320} |
| `kind` | {'str': 2320} |
| `memAvailableKb` | {'int': 2320} |
| `memTotalKb` | {'int': 2320} |
| `otherPssKb` | {'int': 2320} |
| `processes` | {'int': 2320} |
| `pssFallbackProcesses` | {'int': 2320} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
