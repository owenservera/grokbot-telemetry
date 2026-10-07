# sandbox_telemetry_parse — 2026-10-07 12:56:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1030933 lines=2265
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2260 |
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
| `chromeBrowserPssKb` | {'int': 2260} |
| `chromeGpuPssKb` | {'int': 2260} |
| `chromeOtherPssKb` | {'int': 2260} |
| `chromeProcesses` | {'int': 2260} |
| `chromeProfiles` | {'int': 2260} |
| `chromeRendererMaxPssKb` | {'int': 2260} |
| `chromeRendererPssKb` | {'int': 2260} |
| `chromeRenderers` | {'int': 2260} |
| `chromeTabs` | {'int': 2260} |
| `chromeTabsProbedProfiles` | {'int': 2260} |
| `chromeUtilityPssKb` | {'int': 2260} |
| `desktopPssKb` | {'int': 2260} |
| `hostPssKb` | {'int': 2260} |
| `kind` | {'str': 2260} |
| `memAvailableKb` | {'int': 2260} |
| `memTotalKb` | {'int': 2260} |
| `otherPssKb` | {'int': 2260} |
| `processes` | {'int': 2260} |
| `pssFallbackProcesses` | {'int': 2260} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
