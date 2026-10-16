# sandbox_telemetry_parse — 2026-10-16 21:13:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=835105 lines=3121
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2068 |
| `memory_sample` | 1044 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 1044} |
| `chromeGpuPssKb` | {'int': 1044} |
| `chromeOtherPssKb` | {'int': 1044} |
| `chromeProcesses` | {'int': 1044} |
| `chromeProfiles` | {'int': 1044} |
| `chromeRendererMaxPssKb` | {'int': 1044} |
| `chromeRendererPssKb` | {'int': 1044} |
| `chromeRenderers` | {'int': 1044} |
| `chromeTabs` | {'int': 1044} |
| `chromeTabsProbedProfiles` | {'int': 1044} |
| `chromeUtilityPssKb` | {'int': 1044} |
| `desktopPssKb` | {'int': 1044} |
| `hostPssKb` | {'int': 1044} |
| `kind` | {'str': 1044} |
| `memAvailableKb` | {'int': 1044} |
| `memTotalKb` | {'int': 1044} |
| `otherPssKb` | {'int': 1044} |
| `processes` | {'int': 1044} |
| `pssFallbackProcesses` | {'int': 1044} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 2065} |
| `display` | {'int': 2068} |
| `kind` | {'str': 2068} |
| `processes` | {'int': 2068} |
| `pssKb` | {'int': 2068} |
| `rendererMaxPssKb` | {'int': 2068} |
| `renderers` | {'int': 2068} |
| `tabs` | {'int': 2067} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
