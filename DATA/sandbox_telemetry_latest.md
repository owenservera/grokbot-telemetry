# sandbox_telemetry_parse — 2026-10-15 17:16:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=965842 lines=2141
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2136 |
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
| `chromeBrowserPssKb` | {'int': 2136} |
| `chromeGpuPssKb` | {'int': 2136} |
| `chromeOtherPssKb` | {'int': 2136} |
| `chromeProcesses` | {'int': 2136} |
| `chromeProfiles` | {'int': 2136} |
| `chromeRendererMaxPssKb` | {'int': 2136} |
| `chromeRendererPssKb` | {'int': 2136} |
| `chromeRenderers` | {'int': 2136} |
| `chromeTabs` | {'int': 2136} |
| `chromeTabsProbedProfiles` | {'int': 2136} |
| `chromeUtilityPssKb` | {'int': 2136} |
| `desktopPssKb` | {'int': 2136} |
| `hostPssKb` | {'int': 2136} |
| `kind` | {'str': 2136} |
| `memAvailableKb` | {'int': 2136} |
| `memTotalKb` | {'int': 2136} |
| `otherPssKb` | {'int': 2136} |
| `processes` | {'int': 2136} |
| `pssFallbackProcesses` | {'int': 2136} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
