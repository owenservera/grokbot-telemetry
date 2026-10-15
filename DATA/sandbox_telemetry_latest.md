# sandbox_telemetry_parse — 2026-10-15 04:10:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=658030 lines=1460
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1455 |
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
| `chromeBrowserPssKb` | {'int': 1455} |
| `chromeGpuPssKb` | {'int': 1455} |
| `chromeOtherPssKb` | {'int': 1455} |
| `chromeProcesses` | {'int': 1455} |
| `chromeProfiles` | {'int': 1455} |
| `chromeRendererMaxPssKb` | {'int': 1455} |
| `chromeRendererPssKb` | {'int': 1455} |
| `chromeRenderers` | {'int': 1455} |
| `chromeTabs` | {'int': 1455} |
| `chromeTabsProbedProfiles` | {'int': 1455} |
| `chromeUtilityPssKb` | {'int': 1455} |
| `desktopPssKb` | {'int': 1455} |
| `hostPssKb` | {'int': 1455} |
| `kind` | {'str': 1455} |
| `memAvailableKb` | {'int': 1455} |
| `memTotalKb` | {'int': 1455} |
| `otherPssKb` | {'int': 1455} |
| `processes` | {'int': 1455} |
| `pssFallbackProcesses` | {'int': 1455} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
