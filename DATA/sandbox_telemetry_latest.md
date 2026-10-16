# sandbox_telemetry_parse — 2026-10-16 19:38:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=770858 lines=2881
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1908 |
| `memory_sample` | 964 |
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
| `chromeBrowserPssKb` | {'int': 964} |
| `chromeGpuPssKb` | {'int': 964} |
| `chromeOtherPssKb` | {'int': 964} |
| `chromeProcesses` | {'int': 964} |
| `chromeProfiles` | {'int': 964} |
| `chromeRendererMaxPssKb` | {'int': 964} |
| `chromeRendererPssKb` | {'int': 964} |
| `chromeRenderers` | {'int': 964} |
| `chromeTabs` | {'int': 964} |
| `chromeTabsProbedProfiles` | {'int': 964} |
| `chromeUtilityPssKb` | {'int': 964} |
| `desktopPssKb` | {'int': 964} |
| `hostPssKb` | {'int': 964} |
| `kind` | {'str': 964} |
| `memAvailableKb` | {'int': 964} |
| `memTotalKb` | {'int': 964} |
| `otherPssKb` | {'int': 964} |
| `processes` | {'int': 964} |
| `pssFallbackProcesses` | {'int': 964} |

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
| `cpuMillicores` | {'int': 1905} |
| `display` | {'int': 1908} |
| `kind` | {'str': 1908} |
| `processes` | {'int': 1908} |
| `pssKb` | {'int': 1908} |
| `rendererMaxPssKb` | {'int': 1908} |
| `renderers` | {'int': 1908} |
| `tabs` | {'int': 1907} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
