# sandbox_telemetry_parse — 2026-10-06 20:21:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=582506 lines=1282
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1277 |
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
| `chromeBrowserPssKb` | {'int': 1277} |
| `chromeGpuPssKb` | {'int': 1277} |
| `chromeOtherPssKb` | {'int': 1277} |
| `chromeProcesses` | {'int': 1277} |
| `chromeProfiles` | {'int': 1277} |
| `chromeRendererMaxPssKb` | {'int': 1277} |
| `chromeRendererPssKb` | {'int': 1277} |
| `chromeRenderers` | {'int': 1277} |
| `chromeTabs` | {'int': 1277} |
| `chromeTabsProbedProfiles` | {'int': 1277} |
| `chromeUtilityPssKb` | {'int': 1277} |
| `desktopPssKb` | {'int': 1277} |
| `hostPssKb` | {'int': 1277} |
| `kind` | {'str': 1277} |
| `memAvailableKb` | {'int': 1277} |
| `memTotalKb` | {'int': 1277} |
| `otherPssKb` | {'int': 1277} |
| `processes` | {'int': 1277} |
| `pssFallbackProcesses` | {'int': 1277} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
