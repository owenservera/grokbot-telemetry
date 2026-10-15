# sandbox_telemetry_parse — 2026-10-15 07:07:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=727186 lines=1613
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1608 |
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
| `chromeBrowserPssKb` | {'int': 1608} |
| `chromeGpuPssKb` | {'int': 1608} |
| `chromeOtherPssKb` | {'int': 1608} |
| `chromeProcesses` | {'int': 1608} |
| `chromeProfiles` | {'int': 1608} |
| `chromeRendererMaxPssKb` | {'int': 1608} |
| `chromeRendererPssKb` | {'int': 1608} |
| `chromeRenderers` | {'int': 1608} |
| `chromeTabs` | {'int': 1608} |
| `chromeTabsProbedProfiles` | {'int': 1608} |
| `chromeUtilityPssKb` | {'int': 1608} |
| `desktopPssKb` | {'int': 1608} |
| `hostPssKb` | {'int': 1608} |
| `kind` | {'str': 1608} |
| `memAvailableKb` | {'int': 1608} |
| `memTotalKb` | {'int': 1608} |
| `otherPssKb` | {'int': 1608} |
| `processes` | {'int': 1608} |
| `pssFallbackProcesses` | {'int': 1608} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
