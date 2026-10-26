# sandbox_telemetry_parse — 2026-10-26 21:53:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=159837 lines=357
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 352 |
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
| `chromeBrowserPssKb` | {'int': 352} |
| `chromeGpuPssKb` | {'int': 352} |
| `chromeOtherPssKb` | {'int': 352} |
| `chromeProcesses` | {'int': 352} |
| `chromeProfiles` | {'int': 352} |
| `chromeRendererMaxPssKb` | {'int': 352} |
| `chromeRendererPssKb` | {'int': 352} |
| `chromeRenderers` | {'int': 352} |
| `chromeTabs` | {'int': 352} |
| `chromeTabsProbedProfiles` | {'int': 352} |
| `chromeUtilityPssKb` | {'int': 352} |
| `desktopPssKb` | {'int': 352} |
| `hostPssKb` | {'int': 352} |
| `kind` | {'str': 352} |
| `memAvailableKb` | {'int': 352} |
| `memTotalKb` | {'int': 352} |
| `otherPssKb` | {'int': 352} |
| `processes` | {'int': 352} |
| `pssFallbackProcesses` | {'int': 352} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
