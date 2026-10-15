# sandbox_telemetry_parse — 2026-10-15 23:39:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1112290 lines=2465
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2460 |
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
| `chromeBrowserPssKb` | {'int': 2460} |
| `chromeGpuPssKb` | {'int': 2460} |
| `chromeOtherPssKb` | {'int': 2460} |
| `chromeProcesses` | {'int': 2460} |
| `chromeProfiles` | {'int': 2460} |
| `chromeRendererMaxPssKb` | {'int': 2460} |
| `chromeRendererPssKb` | {'int': 2460} |
| `chromeRenderers` | {'int': 2460} |
| `chromeTabs` | {'int': 2460} |
| `chromeTabsProbedProfiles` | {'int': 2460} |
| `chromeUtilityPssKb` | {'int': 2460} |
| `desktopPssKb` | {'int': 2460} |
| `hostPssKb` | {'int': 2460} |
| `kind` | {'str': 2460} |
| `memAvailableKb` | {'int': 2460} |
| `memTotalKb` | {'int': 2460} |
| `otherPssKb` | {'int': 2460} |
| `processes` | {'int': 2460} |
| `pssFallbackProcesses` | {'int': 2460} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
