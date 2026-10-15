# sandbox_telemetry_parse — 2026-10-15 23:25:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1107318 lines=2454
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2449 |
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
| `chromeBrowserPssKb` | {'int': 2449} |
| `chromeGpuPssKb` | {'int': 2449} |
| `chromeOtherPssKb` | {'int': 2449} |
| `chromeProcesses` | {'int': 2449} |
| `chromeProfiles` | {'int': 2449} |
| `chromeRendererMaxPssKb` | {'int': 2449} |
| `chromeRendererPssKb` | {'int': 2449} |
| `chromeRenderers` | {'int': 2449} |
| `chromeTabs` | {'int': 2449} |
| `chromeTabsProbedProfiles` | {'int': 2449} |
| `chromeUtilityPssKb` | {'int': 2449} |
| `desktopPssKb` | {'int': 2449} |
| `hostPssKb` | {'int': 2449} |
| `kind` | {'str': 2449} |
| `memAvailableKb` | {'int': 2449} |
| `memTotalKb` | {'int': 2449} |
| `otherPssKb` | {'int': 2449} |
| `processes` | {'int': 2449} |
| `pssFallbackProcesses` | {'int': 2449} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
