# sandbox_telemetry_parse — 2026-10-07 02:55:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=761426 lines=1674
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1669 |
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
| `chromeBrowserPssKb` | {'int': 1669} |
| `chromeGpuPssKb` | {'int': 1669} |
| `chromeOtherPssKb` | {'int': 1669} |
| `chromeProcesses` | {'int': 1669} |
| `chromeProfiles` | {'int': 1669} |
| `chromeRendererMaxPssKb` | {'int': 1669} |
| `chromeRendererPssKb` | {'int': 1669} |
| `chromeRenderers` | {'int': 1669} |
| `chromeTabs` | {'int': 1669} |
| `chromeTabsProbedProfiles` | {'int': 1669} |
| `chromeUtilityPssKb` | {'int': 1669} |
| `desktopPssKb` | {'int': 1669} |
| `hostPssKb` | {'int': 1669} |
| `kind` | {'str': 1669} |
| `memAvailableKb` | {'int': 1669} |
| `memTotalKb` | {'int': 1669} |
| `otherPssKb` | {'int': 1669} |
| `processes` | {'int': 1669} |
| `pssFallbackProcesses` | {'int': 1669} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
