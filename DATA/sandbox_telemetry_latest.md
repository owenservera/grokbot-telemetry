# sandbox_telemetry_parse — 2026-10-14 15:19:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=352930 lines=785
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 780 |
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
| `chromeBrowserPssKb` | {'int': 780} |
| `chromeGpuPssKb` | {'int': 780} |
| `chromeOtherPssKb` | {'int': 780} |
| `chromeProcesses` | {'int': 780} |
| `chromeProfiles` | {'int': 780} |
| `chromeRendererMaxPssKb` | {'int': 780} |
| `chromeRendererPssKb` | {'int': 780} |
| `chromeRenderers` | {'int': 780} |
| `chromeTabs` | {'int': 780} |
| `chromeTabsProbedProfiles` | {'int': 780} |
| `chromeUtilityPssKb` | {'int': 780} |
| `desktopPssKb` | {'int': 780} |
| `hostPssKb` | {'int': 780} |
| `kind` | {'str': 780} |
| `memAvailableKb` | {'int': 780} |
| `memTotalKb` | {'int': 780} |
| `otherPssKb` | {'int': 780} |
| `processes` | {'int': 780} |
| `pssFallbackProcesses` | {'int': 780} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
