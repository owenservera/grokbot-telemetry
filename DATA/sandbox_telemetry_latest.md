# sandbox_telemetry_parse — 2026-10-15 10:21:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=808546 lines=1793
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1788 |
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
| `chromeBrowserPssKb` | {'int': 1788} |
| `chromeGpuPssKb` | {'int': 1788} |
| `chromeOtherPssKb` | {'int': 1788} |
| `chromeProcesses` | {'int': 1788} |
| `chromeProfiles` | {'int': 1788} |
| `chromeRendererMaxPssKb` | {'int': 1788} |
| `chromeRendererPssKb` | {'int': 1788} |
| `chromeRenderers` | {'int': 1788} |
| `chromeTabs` | {'int': 1788} |
| `chromeTabsProbedProfiles` | {'int': 1788} |
| `chromeUtilityPssKb` | {'int': 1788} |
| `desktopPssKb` | {'int': 1788} |
| `hostPssKb` | {'int': 1788} |
| `kind` | {'str': 1788} |
| `memAvailableKb` | {'int': 1788} |
| `memTotalKb` | {'int': 1788} |
| `otherPssKb` | {'int': 1788} |
| `processes` | {'int': 1788} |
| `pssFallbackProcesses` | {'int': 1788} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
