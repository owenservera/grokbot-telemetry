# sandbox_telemetry_parse — 2026-10-16 01:34:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1155230 lines=2560
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2555 |
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
| `chromeBrowserPssKb` | {'int': 2555} |
| `chromeGpuPssKb` | {'int': 2555} |
| `chromeOtherPssKb` | {'int': 2555} |
| `chromeProcesses` | {'int': 2555} |
| `chromeProfiles` | {'int': 2555} |
| `chromeRendererMaxPssKb` | {'int': 2555} |
| `chromeRendererPssKb` | {'int': 2555} |
| `chromeRenderers` | {'int': 2555} |
| `chromeTabs` | {'int': 2555} |
| `chromeTabsProbedProfiles` | {'int': 2555} |
| `chromeUtilityPssKb` | {'int': 2555} |
| `desktopPssKb` | {'int': 2555} |
| `hostPssKb` | {'int': 2555} |
| `kind` | {'str': 2555} |
| `memAvailableKb` | {'int': 2555} |
| `memTotalKb` | {'int': 2555} |
| `otherPssKb` | {'int': 2555} |
| `processes` | {'int': 2555} |
| `pssFallbackProcesses` | {'int': 2555} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
