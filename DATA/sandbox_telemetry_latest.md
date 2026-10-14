# sandbox_telemetry_parse — 2026-10-14 15:41:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=361518 lines=804
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 799 |
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
| `chromeBrowserPssKb` | {'int': 799} |
| `chromeGpuPssKb` | {'int': 799} |
| `chromeOtherPssKb` | {'int': 799} |
| `chromeProcesses` | {'int': 799} |
| `chromeProfiles` | {'int': 799} |
| `chromeRendererMaxPssKb` | {'int': 799} |
| `chromeRendererPssKb` | {'int': 799} |
| `chromeRenderers` | {'int': 799} |
| `chromeTabs` | {'int': 799} |
| `chromeTabsProbedProfiles` | {'int': 799} |
| `chromeUtilityPssKb` | {'int': 799} |
| `desktopPssKb` | {'int': 799} |
| `hostPssKb` | {'int': 799} |
| `kind` | {'str': 799} |
| `memAvailableKb` | {'int': 799} |
| `memTotalKb` | {'int': 799} |
| `otherPssKb` | {'int': 799} |
| `processes` | {'int': 799} |
| `pssFallbackProcesses` | {'int': 799} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
