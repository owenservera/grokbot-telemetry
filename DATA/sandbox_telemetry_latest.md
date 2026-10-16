# sandbox_telemetry_parse — 2026-10-16 19:02:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=745972 lines=2788
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1846 |
| `memory_sample` | 933 |
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
| `chromeBrowserPssKb` | {'int': 933} |
| `chromeGpuPssKb` | {'int': 933} |
| `chromeOtherPssKb` | {'int': 933} |
| `chromeProcesses` | {'int': 933} |
| `chromeProfiles` | {'int': 933} |
| `chromeRendererMaxPssKb` | {'int': 933} |
| `chromeRendererPssKb` | {'int': 933} |
| `chromeRenderers` | {'int': 933} |
| `chromeTabs` | {'int': 933} |
| `chromeTabsProbedProfiles` | {'int': 933} |
| `chromeUtilityPssKb` | {'int': 933} |
| `desktopPssKb` | {'int': 933} |
| `hostPssKb` | {'int': 933} |
| `kind` | {'str': 933} |
| `memAvailableKb` | {'int': 933} |
| `memTotalKb` | {'int': 933} |
| `otherPssKb` | {'int': 933} |
| `processes` | {'int': 933} |
| `pssFallbackProcesses` | {'int': 933} |

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
| `cpuMillicores` | {'int': 1843} |
| `display` | {'int': 1846} |
| `kind` | {'str': 1846} |
| `processes` | {'int': 1846} |
| `pssKb` | {'int': 1846} |
| `rendererMaxPssKb` | {'int': 1846} |
| `renderers` | {'int': 1846} |
| `tabs` | {'int': 1845} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
