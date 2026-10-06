# sandbox_telemetry_parse — 2026-10-06 22:15:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=634034 lines=1395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1390 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1390} |
| `chromeGpuPssKb` | {'int': 1390} |
| `chromeOtherPssKb` | {'int': 1390} |
| `chromeProcesses` | {'int': 1390} |
| `chromeProfiles` | {'int': 1390} |
| `chromeRendererMaxPssKb` | {'int': 1390} |
| `chromeRendererPssKb` | {'int': 1390} |
| `chromeRenderers` | {'int': 1390} |
| `chromeTabs` | {'int': 1390} |
| `chromeTabsProbedProfiles` | {'int': 1390} |
| `chromeUtilityPssKb` | {'int': 1390} |
| `desktopPssKb` | {'int': 1390} |
| `hostPssKb` | {'int': 1390} |
| `kind` | {'str': 1390} |
| `memAvailableKb` | {'int': 1390} |
| `memTotalKb` | {'int': 1390} |
| `otherPssKb` | {'int': 1390} |
| `processes` | {'int': 1390} |
| `pssFallbackProcesses` | {'int': 1390} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
