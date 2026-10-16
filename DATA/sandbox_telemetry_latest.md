# sandbox_telemetry_parse — 2026-10-16 19:49:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=778085 lines=2908
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1926 |
| `memory_sample` | 973 |
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
| `chromeBrowserPssKb` | {'int': 973} |
| `chromeGpuPssKb` | {'int': 973} |
| `chromeOtherPssKb` | {'int': 973} |
| `chromeProcesses` | {'int': 973} |
| `chromeProfiles` | {'int': 973} |
| `chromeRendererMaxPssKb` | {'int': 973} |
| `chromeRendererPssKb` | {'int': 973} |
| `chromeRenderers` | {'int': 973} |
| `chromeTabs` | {'int': 973} |
| `chromeTabsProbedProfiles` | {'int': 973} |
| `chromeUtilityPssKb` | {'int': 973} |
| `desktopPssKb` | {'int': 973} |
| `hostPssKb` | {'int': 973} |
| `kind` | {'str': 973} |
| `memAvailableKb` | {'int': 973} |
| `memTotalKb` | {'int': 973} |
| `otherPssKb` | {'int': 973} |
| `processes` | {'int': 973} |
| `pssFallbackProcesses` | {'int': 973} |

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
| `cpuMillicores` | {'int': 1923} |
| `display` | {'int': 1926} |
| `kind` | {'str': 1926} |
| `processes` | {'int': 1926} |
| `pssKb` | {'int': 1926} |
| `rendererMaxPssKb` | {'int': 1926} |
| `renderers` | {'int': 1926} |
| `tabs` | {'int': 1925} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
