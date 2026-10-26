# sandbox_telemetry_parse — 2026-10-26 20:46:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=130392 lines=292
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 287 |
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
| `chromeBrowserPssKb` | {'int': 287} |
| `chromeGpuPssKb` | {'int': 287} |
| `chromeOtherPssKb` | {'int': 287} |
| `chromeProcesses` | {'int': 287} |
| `chromeProfiles` | {'int': 287} |
| `chromeRendererMaxPssKb` | {'int': 287} |
| `chromeRendererPssKb` | {'int': 287} |
| `chromeRenderers` | {'int': 287} |
| `chromeTabs` | {'int': 287} |
| `chromeTabsProbedProfiles` | {'int': 287} |
| `chromeUtilityPssKb` | {'int': 287} |
| `desktopPssKb` | {'int': 287} |
| `hostPssKb` | {'int': 287} |
| `kind` | {'str': 287} |
| `memAvailableKb` | {'int': 287} |
| `memTotalKb` | {'int': 287} |
| `otherPssKb` | {'int': 287} |
| `processes` | {'int': 287} |
| `pssFallbackProcesses` | {'int': 287} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
