# sandbox_telemetry_parse — 2026-10-14 18:39:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=427058 lines=949
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 944 |
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
| `chromeBrowserPssKb` | {'int': 944} |
| `chromeGpuPssKb` | {'int': 944} |
| `chromeOtherPssKb` | {'int': 944} |
| `chromeProcesses` | {'int': 944} |
| `chromeProfiles` | {'int': 944} |
| `chromeRendererMaxPssKb` | {'int': 944} |
| `chromeRendererPssKb` | {'int': 944} |
| `chromeRenderers` | {'int': 944} |
| `chromeTabs` | {'int': 944} |
| `chromeTabsProbedProfiles` | {'int': 944} |
| `chromeUtilityPssKb` | {'int': 944} |
| `desktopPssKb` | {'int': 944} |
| `hostPssKb` | {'int': 944} |
| `kind` | {'str': 944} |
| `memAvailableKb` | {'int': 944} |
| `memTotalKb` | {'int': 944} |
| `otherPssKb` | {'int': 944} |
| `processes` | {'int': 944} |
| `pssFallbackProcesses` | {'int': 944} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
