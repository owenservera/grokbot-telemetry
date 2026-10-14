# sandbox_telemetry_parse — 2026-10-14 23:41:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=547742 lines=1216
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1211 |
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
| `chromeBrowserPssKb` | {'int': 1211} |
| `chromeGpuPssKb` | {'int': 1211} |
| `chromeOtherPssKb` | {'int': 1211} |
| `chromeProcesses` | {'int': 1211} |
| `chromeProfiles` | {'int': 1211} |
| `chromeRendererMaxPssKb` | {'int': 1211} |
| `chromeRendererPssKb` | {'int': 1211} |
| `chromeRenderers` | {'int': 1211} |
| `chromeTabs` | {'int': 1211} |
| `chromeTabsProbedProfiles` | {'int': 1211} |
| `chromeUtilityPssKb` | {'int': 1211} |
| `desktopPssKb` | {'int': 1211} |
| `hostPssKb` | {'int': 1211} |
| `kind` | {'str': 1211} |
| `memAvailableKb` | {'int': 1211} |
| `memTotalKb` | {'int': 1211} |
| `otherPssKb` | {'int': 1211} |
| `processes` | {'int': 1211} |
| `pssFallbackProcesses` | {'int': 1211} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
