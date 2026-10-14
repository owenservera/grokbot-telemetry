# sandbox_telemetry_parse — 2026-10-14 06:02:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=129190 lines=290
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 285 |
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
| `chromeBrowserPssKb` | {'int': 285} |
| `chromeGpuPssKb` | {'int': 285} |
| `chromeOtherPssKb` | {'int': 285} |
| `chromeProcesses` | {'int': 285} |
| `chromeProfiles` | {'int': 285} |
| `chromeRendererMaxPssKb` | {'int': 285} |
| `chromeRendererPssKb` | {'int': 285} |
| `chromeRenderers` | {'int': 285} |
| `chromeTabs` | {'int': 285} |
| `chromeTabsProbedProfiles` | {'int': 285} |
| `chromeUtilityPssKb` | {'int': 285} |
| `desktopPssKb` | {'int': 285} |
| `hostPssKb` | {'int': 285} |
| `kind` | {'str': 285} |
| `memAvailableKb` | {'int': 285} |
| `memTotalKb` | {'int': 285} |
| `otherPssKb` | {'int': 285} |
| `processes` | {'int': 285} |
| `pssFallbackProcesses` | {'int': 285} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
