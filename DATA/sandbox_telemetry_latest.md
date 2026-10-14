# sandbox_telemetry_parse — 2026-10-14 18:53:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=433386 lines=963
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 958 |
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
| `chromeBrowserPssKb` | {'int': 958} |
| `chromeGpuPssKb` | {'int': 958} |
| `chromeOtherPssKb` | {'int': 958} |
| `chromeProcesses` | {'int': 958} |
| `chromeProfiles` | {'int': 958} |
| `chromeRendererMaxPssKb` | {'int': 958} |
| `chromeRendererPssKb` | {'int': 958} |
| `chromeRenderers` | {'int': 958} |
| `chromeTabs` | {'int': 958} |
| `chromeTabsProbedProfiles` | {'int': 958} |
| `chromeUtilityPssKb` | {'int': 958} |
| `desktopPssKb` | {'int': 958} |
| `hostPssKb` | {'int': 958} |
| `kind` | {'str': 958} |
| `memAvailableKb` | {'int': 958} |
| `memTotalKb` | {'int': 958} |
| `otherPssKb` | {'int': 958} |
| `processes` | {'int': 958} |
| `pssFallbackProcesses` | {'int': 958} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
