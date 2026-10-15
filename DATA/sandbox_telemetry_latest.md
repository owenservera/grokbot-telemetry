# sandbox_telemetry_parse — 2026-10-15 02:15:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=611926 lines=1358
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1353 |
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
| `chromeBrowserPssKb` | {'int': 1353} |
| `chromeGpuPssKb` | {'int': 1353} |
| `chromeOtherPssKb` | {'int': 1353} |
| `chromeProcesses` | {'int': 1353} |
| `chromeProfiles` | {'int': 1353} |
| `chromeRendererMaxPssKb` | {'int': 1353} |
| `chromeRendererPssKb` | {'int': 1353} |
| `chromeRenderers` | {'int': 1353} |
| `chromeTabs` | {'int': 1353} |
| `chromeTabsProbedProfiles` | {'int': 1353} |
| `chromeUtilityPssKb` | {'int': 1353} |
| `desktopPssKb` | {'int': 1353} |
| `hostPssKb` | {'int': 1353} |
| `kind` | {'str': 1353} |
| `memAvailableKb` | {'int': 1353} |
| `memTotalKb` | {'int': 1353} |
| `otherPssKb` | {'int': 1353} |
| `processes` | {'int': 1353} |
| `pssFallbackProcesses` | {'int': 1353} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
