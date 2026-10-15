# sandbox_telemetry_parse — 2026-10-15 09:41:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=792274 lines=1757
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1752 |
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
| `chromeBrowserPssKb` | {'int': 1752} |
| `chromeGpuPssKb` | {'int': 1752} |
| `chromeOtherPssKb` | {'int': 1752} |
| `chromeProcesses` | {'int': 1752} |
| `chromeProfiles` | {'int': 1752} |
| `chromeRendererMaxPssKb` | {'int': 1752} |
| `chromeRendererPssKb` | {'int': 1752} |
| `chromeRenderers` | {'int': 1752} |
| `chromeTabs` | {'int': 1752} |
| `chromeTabsProbedProfiles` | {'int': 1752} |
| `chromeUtilityPssKb` | {'int': 1752} |
| `desktopPssKb` | {'int': 1752} |
| `hostPssKb` | {'int': 1752} |
| `kind` | {'str': 1752} |
| `memAvailableKb` | {'int': 1752} |
| `memTotalKb` | {'int': 1752} |
| `otherPssKb` | {'int': 1752} |
| `processes` | {'int': 1752} |
| `pssFallbackProcesses` | {'int': 1752} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
