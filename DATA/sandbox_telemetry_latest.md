# sandbox_telemetry_parse — 2026-10-14 11:01:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=248518 lines=554
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 549 |
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
| `chromeBrowserPssKb` | {'int': 549} |
| `chromeGpuPssKb` | {'int': 549} |
| `chromeOtherPssKb` | {'int': 549} |
| `chromeProcesses` | {'int': 549} |
| `chromeProfiles` | {'int': 549} |
| `chromeRendererMaxPssKb` | {'int': 549} |
| `chromeRendererPssKb` | {'int': 549} |
| `chromeRenderers` | {'int': 549} |
| `chromeTabs` | {'int': 549} |
| `chromeTabsProbedProfiles` | {'int': 549} |
| `chromeUtilityPssKb` | {'int': 549} |
| `desktopPssKb` | {'int': 549} |
| `hostPssKb` | {'int': 549} |
| `kind` | {'str': 549} |
| `memAvailableKb` | {'int': 549} |
| `memTotalKb` | {'int': 549} |
| `otherPssKb` | {'int': 549} |
| `processes` | {'int': 549} |
| `pssFallbackProcesses` | {'int': 549} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
